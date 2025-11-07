echo "csa kocsogok"

WORK_PATH="/c/work"
NOTES_PATH=$WORK_PATH/notes


PATH=$PATH:/c/work/progs/vifm/

alias work="cd $WORK_PATH"
work

alias setnode="source /c/work/scripts/sh/setnodepath.sh"

alias emu='/c/emu/start.bat &'

# as in bash source and bash edit
alias bs="source ~/.bashrc"
alias be="vi ~/.bashrc"

now_date_fmt="$(printf '%(%Y-%m-%d)T')"
now_time_fmt="$(printf '%(%H:%M:%S)T')"
echo "($now_date_fmt $now_time_fmt)"

note_today_name="$now_date_fmt.md"
note_today_path="$NOTES_PATH/$today_note_name"

note_template_name="___template.md"
note_template_path="$NOTES_PATH/$note_template_name"

note_create_and_or_open_today() {
	if [ -f "$note_today_path" ]; then
		# if it exists = no work
		:
	else
		echo today\'s note does not exist. creating from template..

		sed	-e "/s/{{gen_date}}/$now_date_fmt/g"	\
			-e "/s/{{gen_time}}/$now_time_fmt/g" 	\
			$note_template_path > $note_today_path
	fi

	vi $note_today_path
}

# note view
alias nv="vi $NOTES_PATH"
# note edit todays note
#alias ne="vi $note_today_path"
alias ne=note_create_and_or_open_today





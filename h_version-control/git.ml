 * process I think. Also dangerous. I think it would be good
 * also when walking the parents to check if there is a .svn or .hg
 * and whatever and then raise an exception
 * 
 * let parent_path_with_dotgit_opt subdir = 
 * let subdir = Common.relative_to_absolute subdir in
 * let rec aux subdir =
 * if Sys.file_exists (Filename.concat subdir "/.git")
 * then Some subdir
 * else 
 * let parent = Common.dirname subdir in
 * if parent = "/"
 * then None
 * else aux parent
 * in
 * aux subdir
 * 
 * let parent_path_with_dotgit a = 
 * Common.some (parent_path_with_dotgit_opt a)
 * 
 * todo: walking of the parent (subject to GIT_CEILING_DIRS)
 *)
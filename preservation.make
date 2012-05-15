; This is the makefile for the Preservation install profile
core = 7.x
api = 2

; Modules
projects[] = "admin"
; apachesolr needs to be dev for now to avoid taxonomy dependency issue
projects[apachesolr][version] = "1.x-dev"
projects[apachesolr][patch][1410256] = "http://drupal.org/files/apachesolr-taxonomy-dependecy.patch"
projects[apachesolr][patch][1418834] = "http://drupal.org/files/apachesolr-hook_info_fix-1418834-1.patch"
projects[] = "context"
projects[] = "ctools"
projects[] = "date"
projects[] = "delta"
projects[] = "devel"
projects[] = "facetapi"
projects[] = "features"
projects[] = "libraries"
projects[] = "migrate"
projects[] = "pathauto"
projects[] = "purr_messages"
projects[] = "superfish"
projects[] = "token"
projects[] = "views"

; Modules :: Preservation
projects[migrate_preservation][type] = "module"
projects[migrate_preservation][download][type] = "git"
projects[migrate_preservation][download][url] = "git://github.com/webgeeks/migrate_preservation.git"
projects[migrate_preservation][download][branch] = "7.x-1.x"

projects[preservation_document][type] = "module"
projects[preservation_document][download][type] = "git"
projects[preservation_document][download][url] = "git://github.com/webgeeks/preservation_document.git"
projects[preservation_document][download][branch] = "7.x-1.x"

projects[preservation_vocabularies][type] = "module"
projects[preservation_vocabularies][download][type] = "git"
projects[preservation_vocabularies][download][url] = "git://github.com/webgeeks/preservation_vocabularies.git"
projects[preservation_vocabularies][download][branch] = "7.x-1.x"

; Themes
projects[] = "omega"
projects[] = "rubik"
projects[] = "tao"

; Themes :: Preservation
projects[advantage][type] = "theme"
projects[advantage][download][type] = "git"
projects[advantage][download][url] = "git://github.com/webgeeks/advantage.git"
projects[advantage][download][branch] = "7.x-1.x"

; Libraries
libraries[superfish][download][type] = "git"
libraries[superfish][download][url] = "git://github.com/mehrpadin/Superfish-for-Drupal.git"
libraries[superfish][directory_name] = "superfish"
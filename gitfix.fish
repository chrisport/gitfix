function gitfix;
    set currentBranch (git rev-parse --abbrev-ref HEAD)
    set project (basename $PWD)
    set commitMessage 'git-help automatic commit. To be reverted'
    switch $argv[1]
       case "develop"
          if test -f lastbranch.bak
              echo "ABORT: Previously stored branch $branch would be overwritten! Please restore it first"
             return
          end
          if test "$currentBranch" = develop
            echo "ABORT: Must not be on develop"
            return
          end
          git add --all
          git commit -m $commitMessage
          echo (git rev-parse --abbrev-ref HEAD) > lastbranch.bak
          git checkout develop
          echo "$project: temporarily commit $origBranch and checkout develop"
       case "branch"
          if not test -f lastbranch.bak
             echo "ABORT: no branch found"
             return
          end
          set branch (cat lastbranch.bak)
          if not test "$currentBranch" = 'develop'
             echo "ABORT: must be on develop"
             return
          end
          git checkout $branch
          set lastCommitMessage (git log -1 --pretty=%B)
          if test "$commitMessage " = "$lastCommitMessage"
            git reset --soft HEAD~
          end
          rm lastbranch.bak
          echo "$project: restore $branch"
    end
end

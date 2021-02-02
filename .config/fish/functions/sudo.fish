# Defined in - @ line 1
function sudo --wraps=doas --description 'alias sudo=doas'
  doas  $argv;
end

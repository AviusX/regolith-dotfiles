# Defined in - @ line 1
function ll --wraps='exa -l' --wraps='exa -lh' --description 'alias ll=exa -lh'
  exa -lh $argv;
end

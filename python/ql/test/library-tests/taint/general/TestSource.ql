import python
import semmle.python.security.TaintTracking
import TaintLib

from TaintSource src, TaintKind kind
where src.isSourceOf(kind)
select src.getLocation().toString(), src.(ControlFlowNode).getNode().toString(), kind

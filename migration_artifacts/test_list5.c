#include "tintin.h"
void foo(struct session *ses) {
    search_node_list(ses->list[LIST_PATHDIR], "bar");
}

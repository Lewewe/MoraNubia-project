.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;
.super Ljava/lang/Object;
.source "OutputListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

.field final synthetic val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;->onItemClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    :cond_0
    return-void
.end method

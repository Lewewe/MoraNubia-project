.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "OutputListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Landroid/content/Context;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public setMeasuredDimension(II)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

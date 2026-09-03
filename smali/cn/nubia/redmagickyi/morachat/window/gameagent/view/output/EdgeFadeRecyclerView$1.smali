.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EdgeFadeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->invalidate()V

    return-void
.end method

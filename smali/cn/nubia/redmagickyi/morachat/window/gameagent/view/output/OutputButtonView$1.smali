.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "OutputButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

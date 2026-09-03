.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PresetButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

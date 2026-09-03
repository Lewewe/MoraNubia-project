.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DanceStudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->initView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 127
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 128
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 129
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    div-int/2addr p2, p3

    if-gtz p2, :cond_0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method

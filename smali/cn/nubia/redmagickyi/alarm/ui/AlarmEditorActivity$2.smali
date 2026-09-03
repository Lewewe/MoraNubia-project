.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AlarmEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 234
    iget-object p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$000(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 235
    iget-object p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    iget-object v1, v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_0
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    goto :goto_1

    :cond_1
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 238
    :cond_2
    iget-object p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    goto :goto_2

    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_2
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 239
    iget-object p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_4

    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    goto :goto_3

    :cond_4
    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_3
    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_4
    return-void
.end method

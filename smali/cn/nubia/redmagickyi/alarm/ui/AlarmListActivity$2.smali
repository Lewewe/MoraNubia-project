.class Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AlarmListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 89
    iget-object p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p4_dp:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    .line 91
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v0, p4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v3, p4

    sub-float/2addr v0, v3

    :goto_0
    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 92
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    iget-object p3, p3, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr p0, p4

    float-to-int v2, p0

    :cond_1
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v0, p4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v3, p4

    sub-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 95
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    iget-object p3, p3, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr p0, p4

    float-to-int v2, p0

    :cond_4
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-void
.end method

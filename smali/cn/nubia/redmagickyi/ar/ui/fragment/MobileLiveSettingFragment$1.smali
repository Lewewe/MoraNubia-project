.class Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MobileLiveSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 99
    iget-object p4, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p4}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 100
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p4, v1, :cond_0

    iget-object p4, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 101
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    goto :goto_1

    :cond_3
    move p4, v0

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 104
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p3}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_4
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void
.end method

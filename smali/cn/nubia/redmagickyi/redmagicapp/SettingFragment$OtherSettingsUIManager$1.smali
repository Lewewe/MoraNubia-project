.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 471
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-static {p4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->access$500(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    .line 472
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 473
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 474
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    rem-int/2addr p2, p3

    const/4 p3, 0x0

    if-nez p2, :cond_2

    if-eqz p4, :cond_0

    .line 476
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p2, p2, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p4, :cond_1

    goto :goto_1

    .line 477
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    move p2, p3

    goto :goto_2

    .line 479
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p2, p2, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p4, :cond_4

    .line 480
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :cond_4
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    return-void
.end method

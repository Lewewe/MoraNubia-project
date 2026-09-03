.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OtherSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;",
        ">;"
    }
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

    .line 507
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 595
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 507
    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;I)V
    .locals 6

    .line 518
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 549
    :cond_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->settings_icp:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v5, Lcn/nubia/redmagickyi/main/R$string;->settings_icp_code:I

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setEnableAutoSize(Z)V

    .line 551
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 537
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 538
    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_3

    .line 542
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 544
    :cond_3
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->settings_about:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setEnableAutoSize(Z)V

    .line 546
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 533
    :cond_4
    iget-object v2, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->privacy_protect:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 529
    :cond_5
    iget-object v2, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->settings_agreement:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_6
    iget-object v2, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->clean_memory:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 521
    :cond_7
    iget-object v2, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->app_start_visual_setting_main_screen_set_icon:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    :goto_0
    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;
    .locals 2

    .line 512
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->item_settings_other:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 513
    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;Landroid/view/View;)V

    return-object p2
.end method

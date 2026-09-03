.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 560
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->val$type:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->ICP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->LoadWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getPrivacyLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->LoadWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->AGREEMENT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->LoadWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_3
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;)V

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;)V

    .line 573
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->show()V

    goto :goto_0

    .line 563
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$600(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget-object v1, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p1, p0, v1, v0}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->requestPinShortcut(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/util/Shortcut;Z)V

    :goto_0
    return-void
.end method

.class Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;
.super Ljava/lang/Object;
.source "RedmagicStartActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchVisualFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AddShortCut()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$500(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    sget-object v1, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->requestPinShortcut(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/util/Shortcut;Z)V

    return-void
.end method

.method public SetRedMadgickyiCare(Z)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->UpdateCareStatus(Z)V

    return-void
.end method

.method public SetRedMagicDesk(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 297
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->SettingUnityWallPaper()V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->ClearWallPaper()V

    :goto_0
    return-void
.end method

.method public VisualSettings()V
    .locals 0

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->goGameSapceCenter()V

    return-void
.end method

.method public checkEnableShortCut()Z
    .locals 2

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$500(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->checkEnableShortcut(Lcn/nubia/redmagickyi/shortcut/util/Shortcut;ZZ)Z

    move-result p0

    return p0
.end method

.method public isCareOpened()Z
    .locals 0

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->isCareOpened()Z

    move-result p0

    return p0
.end method

.method public onAnimationCallback(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 321
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_5painting:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_5wording:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->SwitchImgGuide(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

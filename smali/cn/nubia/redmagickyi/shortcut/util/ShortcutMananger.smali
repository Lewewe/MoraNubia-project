.class public Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;
.super Ljava/lang/Object;
.source "ShortcutMananger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutMananger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShortcutAdded(Landroid/content/Context;Z)Z
    .locals 2

    .line 63
    const-string p0, "has_red_magic_kyi_shortcut_icon"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "shortcut has added, but shouldCheckAdded: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ShortcutMananger"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    return v0
.end method


# virtual methods
.method public checkEnableShortcut(Lcn/nubia/redmagickyi/shortcut/util/Shortcut;ZZ)Z
    .locals 2

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->isShortcutAdded(Landroid/content/Context;Z)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->isNeverRequestShortcut()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v0

    .line 30
    :cond_1
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->onResult(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public requestPinShortcut(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/util/Shortcut;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->onResult(Z)V

    .line 41
    invoke-direct {p0, p1, p3}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->isShortcutAdded(Landroid/content/Context;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 43
    const-string p0, "ShortcutMananger"

    const-string p3, "perform add shortcut"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p0, Landroid/content/Intent;

    const-string p3, "cn.nubia.launcher.gamespace.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/common/R$string;->redmagickyi_app_name:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 47
    sget v0, Lcn/nubia/redmagickyi/common/R$mipmap;->redmagickyi_ic_launcher:I

    invoke-static {p1, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 48
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string p3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    sget-object p3, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    const-string p3, "fromPkgName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x1000000

    .line 52
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string p3, "id"

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

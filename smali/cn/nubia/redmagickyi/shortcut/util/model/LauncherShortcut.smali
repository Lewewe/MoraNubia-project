.class public Lcn/nubia/redmagickyi/shortcut/util/model/LauncherShortcut;
.super Ljava/lang/Object;
.source "LauncherShortcut.java"

# interfaces
.implements Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 23
    sget p0, Lcn/nubia/redmagickyi/common/R$mipmap;->redmagickyi_ic_launcher:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/util/model/LauncherShortcut;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 28
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.main"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/common/R$string;->redmagickyi_app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

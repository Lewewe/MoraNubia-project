.class public Lcn/nubia/redmagickyi/shortcut/util/observer/LauncherShortcutObserver;
.super Ljava/lang/Object;
.source "LauncherShortcutObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setOnceRequestShortcut()V
    .locals 2

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_shortcut_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 42
    const-string v0, "pref_shortcut_launcher_never"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v0, "sync"

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public isNeverRequestShortcut()Z
    .locals 3

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_shortcut_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    const-string v1, "pref_shortcut_launcher_never"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEnableShortcut, before isNeverRequestShortcut = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/util/observer/LauncherShortcutObserver;->isUpdateFromRedmagicOsFromMyOs()Z

    move-result v0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "checkEnableShortcut, after isNeverRequestShortcut = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUpdateFromRedmagicOsFromMyOs()Z
    .locals 3

    .line 53
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "support_redmagickyi"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_0
    return v1
.end method

.method public onResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/shortcut/util/observer/LauncherShortcutObserver;->setOnceRequestShortcut()V

    :cond_0
    return-void
.end method

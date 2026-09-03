.class public Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;,
        Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutBroadcast"

.field private static messageReceiver:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;


# instance fields
.field private shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;->shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    return-void
.end method

.method public static registShortcutMessageBroadcast(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;)V
    .locals 2

    .line 46
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    const-class v1, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    invoke-direct {v1, p1}, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;-><init>(Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;)V

    sput-object v1, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;->messageReceiver:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    const/4 p1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    const-string p0, "ShortcutBroadcast"

    const-string p1, "failed regist messageReceiver"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unregistShortcutMessageBroadcast(Landroid/content/Context;)V
    .locals 1

    .line 56
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;->messageReceiver:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    const-string p0, "ShortcutBroadcast"

    const-string v0, "failed unregist messageReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 17
    const-string p0, "id"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive shortcut broadcast id is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutBroadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p2}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->findShortcutById(Ljava/lang/String;)Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

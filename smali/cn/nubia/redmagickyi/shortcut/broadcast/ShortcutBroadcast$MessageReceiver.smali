.class public Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageReceiver"
.end annotation


# instance fields
.field private onReceiveListener:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;->onReceiveListener:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 37
    const-string p1, "id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$MessageReceiver;->onReceiveListener:Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;->onReceive(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

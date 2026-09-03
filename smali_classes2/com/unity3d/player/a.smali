.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;
.source "a.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$a1;,
        Lcom/unity3d/player/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/AudioManager;

.field private c:Lcom/unity3d/player/a$a1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/unity3d/player/a;->a:Landroid/content/Context;

    .line 22
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/a;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/unity3d/player/a;->c:Lcom/unity3d/player/a$a1;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a;->c:Lcom/unity3d/player/a$a1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/unity3d/player/a;->c:Lcom/unity3d/player/a$a1;

    :cond_0
    return-void
.end method

.method public final a(Lcom/unity3d/player/a$b;)V
    .locals 7

    .line 26
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v6, Lcom/unity3d/player/a$a1;

    iget-object v3, p0, Lcom/unity3d/player/a;->b:Landroid/media/AudioManager;

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/a$a1;-><init>(Lcom/unity3d/player/a;Landroid/os/Handler;Landroid/media/AudioManager;ILcom/unity3d/player/a$b;)V

    iput-object v6, p0, Lcom/unity3d/player/a;->c:Lcom/unity3d/player/a$a1;

    .line 28
    iget-object p1, p0, Lcom/unity3d/player/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/unity3d/player/a;->c:Lcom/unity3d/player/a$a1;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

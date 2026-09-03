.class Lcom/unity3d/player/a$a1;
.super Landroid/database/ContentObserver;
.source "a.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a1"
.end annotation


# instance fields
.field private final b:Lcom/unity3d/player/a$b;

.field private final c:Landroid/media/AudioManager;

.field private final d:I

.field private e:I

.field final synthetic this$0:Lcom/unity3d/player/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a;Landroid/os/Handler;Landroid/media/AudioManager;ILcom/unity3d/player/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/unity3d/player/a$a1;->this$0:Lcom/unity3d/player/a;

    .line 46
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    iput-object p3, p0, Lcom/unity3d/player/a$a1;->c:Landroid/media/AudioManager;

    const/4 p1, 0x3

    .line 48
    iput p1, p0, Lcom/unity3d/player/a$a1;->d:I

    .line 49
    iput-object p5, p0, Lcom/unity3d/player/a$a1;->b:Lcom/unity3d/player/a$b;

    .line 50
    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/a$a1;->e:I

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/unity3d/player/a$a1;->c:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/a$a1;->b:Lcom/unity3d/player/a$b;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unity3d/player/a$a1;->d:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget p2, p0, Lcom/unity3d/player/a$a1;->e:I

    if-eq p1, p2, :cond_0

    .line 56
    iput p1, p0, Lcom/unity3d/player/a$a1;->e:I

    .line 57
    iget-object p0, p0, Lcom/unity3d/player/a$a1;->b:Lcom/unity3d/player/a$b;

    invoke-interface {p0, p1}, Lcom/unity3d/player/a$b;->onAudioVolumeChanged(I)V

    :cond_0
    return-void
.end method

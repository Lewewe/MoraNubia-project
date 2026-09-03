.class public final Lcom/unity3d/player/q;
.super Landroid/widget/FrameLayout;
.source "q.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/q$a;,
        Lcom/unity3d/player/q$b;
    }
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/SurfaceView;

.field private final d:Landroid/view/SurfaceHolder;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:J

.field private final j:J

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Landroid/view/Display;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/media/MediaPlayer;

.field private r:Landroid/widget/MediaController;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/unity3d/player/q$a;

.field private y:Lcom/unity3d/player/q$b;

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/q$a;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/unity3d/player/q;->s:Z

    .line 49
    iput-boolean v0, p0, Lcom/unity3d/player/q;->t:Z

    .line 50
    iput v0, p0, Lcom/unity3d/player/q;->u:I

    .line 51
    iput-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    .line 52
    iput-boolean v0, p0, Lcom/unity3d/player/q;->w:Z

    .line 55
    iput v0, p0, Lcom/unity3d/player/q;->z:I

    .line 63
    iput-object p11, p0, Lcom/unity3d/player/q;->x:Lcom/unity3d/player/q$a;

    .line 64
    iput-object p1, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    .line 65
    iput-object p0, p0, Lcom/unity3d/player/q;->k:Landroid/widget/FrameLayout;

    .line 66
    new-instance p11, Landroid/view/SurfaceView;

    invoke-direct {p11, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p11, p0, Lcom/unity3d/player/q;->c:Landroid/view/SurfaceView;

    .line 67
    invoke-virtual {p11}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/q;->d:Landroid/view/SurfaceHolder;

    .line 68
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 69
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 70
    invoke-virtual {p0, p11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    const-string p11, "window"

    invoke-virtual {p1, p11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 72
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/q;->l:Landroid/view/Display;

    .line 73
    iput-object p2, p0, Lcom/unity3d/player/q;->e:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/unity3d/player/q;->f:I

    .line 75
    iput p5, p0, Lcom/unity3d/player/q;->g:I

    .line 76
    iput-boolean p6, p0, Lcom/unity3d/player/q;->h:Z

    .line 77
    iput-wide p7, p0, Lcom/unity3d/player/q;->i:J

    .line 78
    iput-wide p9, p0, Lcom/unity3d/player/q;->j:J

    .line 79
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p11, "fileName: "

    invoke-direct {p1, p11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 83
    :cond_0
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_1

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "backgroundColor: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 87
    :cond_1
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_2

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "controlMode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 91
    :cond_2
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_3

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scalingMode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 95
    :cond_3
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_4

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isURL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 99
    :cond_4
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_5

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "videoOffset: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 103
    :cond_5
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_6

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "videoLength: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/unity3d/player/q;->setFocusable(Z)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/unity3d/player/q;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/unity3d/player/q;->z:I

    .line 117
    iget-object p1, p0, Lcom/unity3d/player/q;->x:Lcom/unity3d/player/q$a;

    if-eqz p1, :cond_0

    .line 118
    iget p0, p0, Lcom/unity3d/player/q;->z:I

    invoke-interface {p1, p0}, Lcom/unity3d/player/q$a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoPlayer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .locals 8

    .line 136
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/unity3d/player/q;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 138
    iget-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    if-nez v0, :cond_5

    .line 139
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "Resuming playback"

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0}, Lcom/unity3d/player/q;->a(I)V

    .line 148
    invoke-virtual {p0}, Lcom/unity3d/player/q;->doCleanUp()V

    .line 151
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    .line 152
    iget-boolean v1, p0, Lcom/unity3d/player/q;->h:Z

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/q;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-wide v0, p0, Lcom/unity3d/player/q;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 157
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/q;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-wide v4, p0, Lcom/unity3d/player/q;->i:J

    iget-wide v6, p0, Lcom/unity3d/player/q;->j:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 159
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/unity3d/player/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/player/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 166
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/q;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/q;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 176
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 177
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 178
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 179
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 180
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 181
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 182
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 183
    new-instance v0, Lcom/unity3d/player/q$b;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/player/q$b;-><init>(Lcom/unity3d/player/q;Lcom/unity3d/player/q;)V

    iput-object v0, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    .line 184
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 186
    sget-boolean v1, Lcom/unity3d/player/q;->a:Z

    if-eqz v1, :cond_4

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x2

    .line 190
    invoke-direct {p0, v0}, Lcom/unity3d/player/q;->a(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private d()V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/unity3d/player/q;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 343
    invoke-direct {p0, v0}, Lcom/unity3d/player/q;->a(I)V

    .line 344
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/q;->updateVideoLayout()V

    .line 349
    iget-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/unity3d/player/q;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final CancelOnPrepare()V
    .locals 1

    const/4 v0, 0x2

    .line 196
    invoke-direct {p0, v0}, Lcom/unity3d/player/q;->a(I)V

    return-void
.end method

.method final a()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/unity3d/player/q;->v:Z

    return p0
.end method

.method public final canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final canSeekBackward()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final canSeekForward()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final destroyPlayer()V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "destroyPlayer"

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/unity3d/player/q;->pause()V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/q;->doCleanUp()V

    return-void
.end method

.method protected final doCleanUp()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/unity3d/player/q$b;->a()V

    .line 327
    iput-object v1, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 332
    iput-object v1, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/unity3d/player/q;->o:I

    .line 336
    iput v0, p0, Lcom/unity3d/player/q;->p:I

    .line 337
    iput-boolean v0, p0, Lcom/unity3d/player/q;->t:Z

    .line 338
    iput-boolean v0, p0, Lcom/unity3d/player/q;->s:Z

    return-void
.end method

.method public final getAudioSessionId()I
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/unity3d/player/q;->h:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/unity3d/player/q;->u:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    :goto_0
    return p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDuration()I
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isPlaying()Z
    .locals 3

    .line 432
    iget-boolean v0, p0, Lcom/unity3d/player/q;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/q;->s:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 433
    :goto_0
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-nez p0, :cond_1

    xor-int/lit8 p0, v0, 0x1

    return p0

    .line 436
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 221
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBufferingUpdate percent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 225
    :cond_0
    iput p2, p0, Lcom/unity3d/player/q;->u:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 229
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 230
    const-string p1, "onCompletion called"

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/q;->destroyPlayer()V

    const/4 p1, 0x3

    .line 234
    invoke-direct {p0, p1}, Lcom/unity3d/player/q;->a(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 200
    iget v0, p0, Lcom/unity3d/player/q;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/widget/MediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/player/q;->destroyPlayer()V

    const/4 p1, 0x3

    .line 204
    invoke-direct {p0, p1}, Lcom/unity3d/player/q;->a(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 259
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 260
    const-string p1, "onPrepared called"

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1}, Lcom/unity3d/player/q$b;->a()V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/unity3d/player/q;->y:Lcom/unity3d/player/q$b;

    .line 268
    :cond_1
    iget p1, p0, Lcom/unity3d/player/q;->f:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_5

    .line 269
    :cond_2
    new-instance p1, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    .line 270
    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 271
    iget-object p1, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 272
    iget-object p1, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 273
    iget-object p1, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    .line 274
    instance-of v1, p1, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v1, :cond_3

    .line 275
    check-cast p1, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 277
    :cond_3
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 278
    check-cast p1, Landroid/app/Activity;

    .line 279
    iget-object v1, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 282
    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 285
    :cond_5
    iput-boolean v0, p0, Lcom/unity3d/player/q;->t:Z

    .line 286
    iget-boolean p1, p0, Lcom/unity3d/player/q;->s:Z

    if-eqz p1, :cond_6

    .line 287
    invoke-direct {p0}, Lcom/unity3d/player/q;->d()V

    :cond_6
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 211
    iget v1, p0, Lcom/unity3d/player/q;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/unity3d/player/q;->destroyPlayer()V

    const/4 p1, 0x3

    .line 213
    invoke-direct {p0, p1}, Lcom/unity3d/player/q;->a(I)V

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/q;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 238
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onVideoSizeChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/unity3d/player/q;->s:Z

    .line 244
    iput p2, p0, Lcom/unity3d/player/q;->o:I

    .line 245
    iput p3, p0, Lcom/unity3d/player/q;->p:I

    .line 246
    iget-boolean p1, p0, Lcom/unity3d/player/q;->t:Z

    if-eqz p1, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/unity3d/player/q;->d()V

    goto :goto_0

    .line 251
    :cond_1
    sget-boolean p0, Lcom/unity3d/player/q;->a:Z

    if-eqz p0, :cond_2

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "invalid video width("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") or height("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 442
    iget-boolean v1, p0, Lcom/unity3d/player/q;->w:Z

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    :cond_1
    return-void
.end method

.method public final seekTo(I)V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 457
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "Start"

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 462
    iget-boolean v1, p0, Lcom/unity3d/player/q;->w:Z

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/unity3d/player/q;->v:Z

    :cond_2
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 293
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 297
    :cond_0
    iget p1, p0, Lcom/unity3d/player/q;->m:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/unity3d/player/q;->n:I

    if-eq p1, p4, :cond_2

    .line 298
    :cond_1
    iput p3, p0, Lcom/unity3d/player/q;->m:I

    .line 299
    iput p4, p0, Lcom/unity3d/player/q;->n:I

    .line 300
    iget-boolean p1, p0, Lcom/unity3d/player/q;->w:Z

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/unity3d/player/q;->updateVideoLayout()V

    :cond_2
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 316
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 317
    const-string p1, "surfaceCreated called"

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Lcom/unity3d/player/q;->w:Z

    .line 321
    invoke-direct {p0}, Lcom/unity3d/player/q;->c()V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 308
    sget-boolean p1, Lcom/unity3d/player/q;->a:Z

    if-eqz p1, :cond_0

    .line 309
    const-string p1, "surfaceDestroyed called"

    invoke-static {p1}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/unity3d/player/q;->w:Z

    return-void
.end method

.method protected final updateVideoLayout()V
    .locals 8

    .line 357
    sget-boolean v0, Lcom/unity3d/player/q;->a:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/q;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 362
    iget v0, p0, Lcom/unity3d/player/q;->m:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/q;->n:I

    if-nez v0, :cond_2

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 364
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 365
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 366
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/unity3d/player/q;->m:I

    .line 367
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/unity3d/player/q;->n:I

    .line 370
    :cond_2
    iget v0, p0, Lcom/unity3d/player/q;->m:I

    .line 371
    iget v1, p0, Lcom/unity3d/player/q;->n:I

    .line 372
    iget-boolean v2, p0, Lcom/unity3d/player/q;->s:Z

    if-eqz v2, :cond_6

    .line 373
    iget v2, p0, Lcom/unity3d/player/q;->o:I

    int-to-float v3, v2

    iget v4, p0, Lcom/unity3d/player/q;->p:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 375
    iget v6, p0, Lcom/unity3d/player/q;->g:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_3

    :goto_0
    int-to-float v1, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    cmpl-float v2, v5, v3

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_5
    if-nez v6, :cond_7

    move v0, v2

    move v1, v4

    goto :goto_1

    .line 391
    :cond_6
    sget-boolean v2, Lcom/unity3d/player/q;->a:Z

    if-eqz v2, :cond_7

    .line 392
    const-string v2, "updateVideoLayout: Video size is not known yet"

    invoke-static {v2}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 395
    :cond_7
    :goto_1
    iget v2, p0, Lcom/unity3d/player/q;->m:I

    if-ne v2, v0, :cond_8

    iget v2, p0, Lcom/unity3d/player/q;->n:I

    if-eq v2, v1, :cond_a

    .line 396
    :cond_8
    sget-boolean v2, Lcom/unity3d/player/q;->a:Z

    if-eqz v2, :cond_9

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/q;->b(Ljava/lang/String;)V

    .line 400
    :cond_9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 401
    iget-object v0, p0, Lcom/unity3d/player/q;->k:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/unity3d/player/q;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

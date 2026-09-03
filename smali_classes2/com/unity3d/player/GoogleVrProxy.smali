.class Lcom/unity3d/player/GoogleVrProxy;
.super Lcom/unity3d/player/c;
.source "GoogleVrProxy.java"

# interfaces
.implements Lcom/unity3d/player/GoogleVrVideo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/GoogleVrProxy$a;
    }
.end annotation


# instance fields
.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/util/Vector;

.field private j:Landroid/view/View;

.field private k:Lcom/unity3d/player/GoogleVrProxy$a;

.field private l:Ljava/lang/Thread;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/f;)V
    .locals 1

    .line 64
    const-string v0, "Google VR"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/c;-><init>(Ljava/lang/String;Lcom/unity3d/player/f;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy;->f:Z

    .line 24
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    .line 27
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleVrProxy$a;-><init>(Lcom/unity3d/player/GoogleVrProxy;)V

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    .line 29
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->l:Ljava/lang/Thread;

    .line 30
    new-instance p1, Lcom/unity3d/player/GoogleVrProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unity3d/player/GoogleVrProxy$1;-><init>(Lcom/unity3d/player/GoogleVrProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->m:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->initVrJni()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    return-void
.end method

.method private a(Ljava/lang/ClassLoader;)Z
    .locals 9

    const/4 v0, 0x0

    .line 342
    :try_start_0
    const-string v1, "com.unity3d.unitygvr.GoogleVR"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    new-instance v2, Lcom/unity3d/player/p;

    invoke-direct {v2, p1, v1}, Lcom/unity3d/player/p;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string p1, "initialize"

    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    aput-object v4, v3, v0

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/view/SurfaceView;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-class v4, Landroid/os/Handler;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    invoke-virtual {v2, p1, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 345
    const-string p1, "deinitialize"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 346
    const-string p1, "load"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 347
    const-string p1, "enable"

    new-array v1, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 348
    const-string p1, "unload"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 349
    const-string p1, "pause"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 350
    const-string p1, "resume"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 351
    const-string p1, "getGvrLayout"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 352
    const-string p1, "getVideoSurfaceId"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 353
    const-string p1, "getVideoSurface"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 354
    iput-object v2, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception initializing GoogleVR from Unity library. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic access$000(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unity3d/player/GoogleVrProxy;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/unity3d/player/GoogleVrProxy;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/unity3d/player/GoogleVrProxy;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->a(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/player/GoogleVrProxy;)Lcom/unity3d/player/GoogleVrProxy$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    return-object p0
.end method

.method private d()Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean p0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    return p0
.end method

.method private e()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 89
    iget-boolean v1, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v1, v1, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 90
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    .line 92
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final native initVrJni()V
.end method

.method private final native isQuiting()Z
.end method

.method private final native setVrVideoTransform([[F)V
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    const-string v0, "android.intent.extra.VR_LAUNCH"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean p0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    return p0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 139
    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v1}, Lcom/unity3d/player/GoogleVrProxy$a;->b()V

    .line 140
    iput-object p2, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    .line 141
    iput-object p4, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    .line 142
    iget-boolean p4, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/unity3d/player/GoogleVrProxy;->f()Z

    move-result p4

    if-nez p4, :cond_0

    .line 143
    const-string p1, "Daydream requires a device that supports an api version of 24 (Nougat) or better."

    invoke-virtual {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    return v0

    .line 146
    :cond_0
    const-class p4, Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 147
    invoke-direct {p0, p4}, Lcom/unity3d/player/GoogleVrProxy;->a(Ljava/lang/ClassLoader;)Z

    move-result p4

    if-nez p4, :cond_1

    return v0

    .line 152
    :cond_1
    :try_start_0
    iget-object p4, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v1, "initialize"

    iget-boolean v2, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/GoogleVrProxy;->m:Landroid/os/Handler;

    filled-new-array {p1, p2, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Exception while trying to initialize Unity Google VR Library. "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    .line 159
    const-string p1, "Unable to initialize GoogleVR library."

    invoke-virtual {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    return v0

    .line 162
    :cond_2
    iput-object p3, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/View;

    .line 163
    iget-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    .line 164
    const-string p1, ""

    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy;->d:Ljava/lang/String;

    return p2

    .line 170
    :cond_3
    const-string p1, "Invalid parameters passed to Google VR initialization."

    invoke-virtual {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    return v0
.end method

.method public final b()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/unity3d/player/GoogleVrProxy;->resumeGvrLayout()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 329
    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 330
    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public deregisterGoogleVrVideoListener(Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {p1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceUnavailable()V

    .line 309
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected getVideoSurface()Ljava/lang/Object;
    .locals 4

    .line 283
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-nez v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "getVideoSurface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception caught while Getting GoogleVR Video Surface. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method protected getVideoSurfaceId()I
    .locals 4

    .line 270
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-nez v0, :cond_0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "getVideoSurfaceId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception caught while getting Video Surface ID from GoogleVR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method protected loadGoogleVr(ZZZZZ)J
    .locals 13

    move-object v8, p0

    .line 176
    iget-object v0, v8, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    const-wide/16 v9, 0x0

    if-nez v0, :cond_0

    return-wide v9

    .line 179
    :cond_0
    new-instance v11, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 180
    const-string v0, "Cardboard"

    goto :goto_0

    :cond_1
    const-string v0, "Daydream"

    :goto_0
    iput-object v0, v8, Lcom/unity3d/player/GoogleVrProxy;->d:Ljava/lang/String;

    .line 181
    new-instance v12, Lcom/unity3d/player/GoogleVrProxy$2;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/GoogleVrProxy$2;-><init>(Lcom/unity3d/player/GoogleVrProxy;Ljava/util/concurrent/atomic/AtomicLong;ZZZZZ)V

    invoke-virtual {p0, v12}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThreadWithSync(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-nez v0, :cond_3

    .line 191
    :cond_2
    const-string v0, "Google VR had a fatal issue while loading. VR will not be available."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    .line 194
    :cond_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected pauseGvrLayout()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-nez v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceUnavailable()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pause"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    :cond_2
    return-void
.end method

.method public registerGoogleVrVideoListener(Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p0}, Lcom/unity3d/player/GoogleVrProxy;->getVideoSurface()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    if-eqz p0, :cond_0

    .line 300
    invoke-interface {p1, p0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected resumeGvrLayout()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "resume"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean v1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    :cond_1
    return-void
.end method

.method protected setGoogleVrModeEnabled(Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->isQuiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->e()V

    .line 205
    :cond_0
    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/GoogleVrProxy$3;-><init>(Lcom/unity3d/player/GoogleVrProxy;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setVideoLocationTransform([F)V
    .locals 7

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 319
    aget-object v5, v0, v3

    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v4

    aget v6, p1, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->setVrVideoTransform([[F)V

    return-void
.end method

.method protected unloadGoogleVr()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, v1}, Lcom/unity3d/player/GoogleVrProxy;->setGoogleVrModeEnabled(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->c:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean v1, v0, Lcom/unity3d/player/GoogleVrProxy$a;->c:Z

    :cond_1
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/View;

    .line 252
    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleVrProxy$4;-><init>(Lcom/unity3d/player/GoogleVrProxy;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

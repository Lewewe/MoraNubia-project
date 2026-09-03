.class public Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;
.super Lcom/unity3d/player/UnityPlayer;
.source "ProxyUnityPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPlayer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;ZLcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;ZLcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 37
    new-instance p2, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;ZLcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected addPhoneCallListener()V
    .locals 0

    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnityPlayerUnloaded, configuration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 103
    const-string v0, "UnityPlayer"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    return-void
.end method

.method public displayChanged(ILandroid/view/Surface;)Z
    .locals 1

    .line 64
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    move-result p0

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "displayChanged, i = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnityPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSettings, result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getView, result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public init(IZ)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init begin, i = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->init(IZ)V

    return-void
.end method

.method protected kill()V
    .locals 2

    .line 109
    const-string v0, "UnityPlayer"

    const-string v1, "kill"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    return-void
.end method

.method public lowMemory()V
    .locals 2

    .line 130
    const-string v0, "UnityPlayer"

    const-string v1, "lowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newIntent, intent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 2

    .line 58
    const-string v0, "UnityPlayer"

    const-string v1, "onUnityPlayerQuitted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->onUnityPlayerQuitted()V

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 2

    .line 52
    const-string v0, "UnityPlayer"

    const-string v1, "onUnityPlayerUnloaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->onUnityPlayerUnloaded()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 115
    const-string v0, "UnityPlayer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method public quit()V
    .locals 2

    .line 91
    const-string v0, "UnityPlayer"

    const-string v1, "quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 121
    const-string v0, "UnityPlayer"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unload()V
    .locals 2

    .line 136
    const-string v0, "UnityPlayer"

    const-string v1, "unload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->unload()V

    return-void
.end method

.method public windowFocusChanged(Z)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "windowFocusChanged, b = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

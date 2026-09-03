.class public Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;
.super Landroid/database/ContentObserver;
.source "AIAssistantSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AIAssistantContentObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 131
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "VoiceAssistantSettingsManager\uff0cchanged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIAssistantSettingsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->access$000()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    .line 134
    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method

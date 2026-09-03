.class public Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;
.super Ljava/lang/Object;
.source "TrackManager.java"


# static fields
.field private static maxFrameIndex:I


# instance fields
.field private final transient lock:Ljava/lang/Object;

.field private relativeRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private trackComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->relativeRects:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->trackComparator:Ljava/util/Comparator;

    .line 41
    sput p1, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->maxFrameIndex:I

    return-void
.end method

.method public static getMaxFrameIndex()I
    .locals 1

    .line 45
    sget v0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->maxFrameIndex:I

    return v0
.end method


# virtual methods
.method public varargs addTracks([Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 55
    iget-object v4, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->trackComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 86
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 87
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    .line 88
    invoke-virtual {v3, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->relativeRects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->relativeRects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v3, p1, p2, v5, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findTrack(Ljava/lang/Class;)Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;",
            ">;)",
            "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 71
    monitor-exit v0

    return-object v1

    .line 74
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    .line 120
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->release()V

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->relativeRects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restore()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->tracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    .line 103
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isCommonRes()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->release()V

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->relativeRects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

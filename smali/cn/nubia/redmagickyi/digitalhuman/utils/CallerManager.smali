.class public Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;
.super Ljava/lang/Object;
.source "CallerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;
    }
.end annotation


# instance fields
.field private callers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->callers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentActiveCaller()I
    .locals 3

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->callers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;

    .line 34
    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$100(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$000(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 38
    :cond_1
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActive(I)V
    .locals 6

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->callers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;

    .line 11
    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$000(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 12
    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$102(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;Z)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$102(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;Z)Z

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 19
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->callers:Ljava/util/Vector;

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;

    invoke-direct {v1, p1, v4}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInactive(I)V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->callers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;

    .line 25
    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$000(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 26
    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->access$102(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public abstract Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;


# instance fields
.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected notifyDataChangedEvent()V
    .locals 1

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 44
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .locals 1

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 55
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    .line 28
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

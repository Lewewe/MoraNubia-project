.class Lcn/nubia/redmagickyi/achievement/util/track/TrackManager$1;
.super Ljava/lang/Object;
.source "TrackManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;)I
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getLayerPosition()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getLayerPosition()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getLayerPosition()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getLayerPosition()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p1, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    check-cast p2, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager$1;->compare(Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;)I

    move-result p0

    return p0
.end method

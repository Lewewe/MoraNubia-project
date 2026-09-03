.class public Lcom/zte/aigc/vo/charge/UserPointsSummary;
.super Ljava/lang/Object;
.source "UserPointsSummary.java"


# instance fields
.field private FuncPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/FuncPoints;",
            ">;"
        }
    .end annotation
.end field

.field private pointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/UserPoints;",
            ">;"
        }
    .end annotation
.end field

.field private totalPoints:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFuncPointsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/FuncPoints;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->FuncPointsList:Ljava/util/List;

    return-object p0
.end method

.method public getPointsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/UserPoints;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->pointsList:Ljava/util/List;

    return-object p0
.end method

.method public getTotalPoints()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->totalPoints:I

    return p0
.end method

.method public setFuncPointsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/FuncPoints;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->FuncPointsList:Ljava/util/List;

    return-void
.end method

.method public setPointsList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aigc/vo/charge/UserPoints;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->pointsList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aigc/vo/charge/UserPoints;

    .line 27
    iget v1, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->totalPoints:I

    invoke-virtual {v0}, Lcom/zte/aigc/vo/charge/UserPoints;->getPoints()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->totalPoints:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTotalPoints(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsSummary;->totalPoints:I

    return-void
.end method

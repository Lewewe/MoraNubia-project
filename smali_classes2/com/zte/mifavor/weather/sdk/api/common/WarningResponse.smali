.class public Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;
.super Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
.source "WarningResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;->result:Ljava/util/List;

    return-object p0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;->result:Ljava/util/List;

    return-void
.end method

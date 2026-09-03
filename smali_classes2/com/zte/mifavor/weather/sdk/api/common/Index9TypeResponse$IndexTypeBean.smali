.class public Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;
.super Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;
.source "Index9TypeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexTypeBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;
    }
.end annotation


# instance fields
.field private index:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;->index:Ljava/util/List;

    return-object p0
.end method

.method public setIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;->index:Ljava/util/List;

    return-void
.end method

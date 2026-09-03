.class public Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;
.super Ljava/lang/Object;
.source "IndexInfoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/weather/IndexInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexInfo"
.end annotation


# instance fields
.field private level:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->level:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->typeString:Ljava/lang/String;

    return-object p0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->level:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->type:Ljava/lang/Integer;

    return-void
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->typeString:Ljava/lang/String;

    return-void
.end method

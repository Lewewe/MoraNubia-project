.class public Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;
.super Ljava/lang/Object;
.source "Alerts_Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alerts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;,
        Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;
    }
.end annotation


# instance fields
.field private AlertID:Ljava/lang/Integer;

.field private Area:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;",
            ">;"
        }
    .end annotation
.end field

.field private Category:Ljava/lang/String;

.field private CountryCode:Ljava/lang/String;

.field private Description:Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;

.field private Link:Ljava/lang/String;

.field private MobileLink:Ljava/lang/String;

.field private Priority:Ljava/lang/Integer;

.field private Source:Ljava/lang/String;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;->Area:Ljava/util/List;

    return-object p0
.end method

.method public getDescription()Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;->Description:Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;

    return-object p0
.end method

.method public getMobileLink()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;->MobileLink:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;->Priority:Ljava/lang/Integer;

    return-object p0
.end method

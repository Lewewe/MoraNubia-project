.class public Lcom/zte/weather/sdk/model/weather/AlertInfo;
.super Ljava/lang/Object;
.source "AlertInfo.java"


# instance fields
.field private Text:Ljava/lang/String;

.field private alertid:Ljava/lang/String;

.field private mobileLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertid()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->alertid:Ljava/lang/String;

    return-object p0
.end method

.method public getMobileLink()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->mobileLink:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->Text:Ljava/lang/String;

    return-object p0
.end method

.method public setAlertid(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->alertid:Ljava/lang/String;

    return-void
.end method

.method public setMobileLink(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->mobileLink:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/AlertInfo;->Text:Ljava/lang/String;

    return-void
.end method

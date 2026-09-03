.class public Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;
.super Ljava/lang/Object;
.source "Alerts_Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptionBean"
.end annotation


# instance fields
.field private English:Ljava/lang/String;

.field private Localized:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalized()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$DescriptionBean;->Localized:Ljava/lang/String;

    return-object p0
.end method

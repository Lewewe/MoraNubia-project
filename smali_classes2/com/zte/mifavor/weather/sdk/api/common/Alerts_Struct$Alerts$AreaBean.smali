.class public Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;
.super Ljava/lang/Object;
.source "Alerts_Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AreaBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean$LastActionBean;
    }
.end annotation


# instance fields
.field private EndTime:Ljava/lang/String;

.field private EpochEndTime:Ljava/lang/Integer;

.field private EpochStartTime:Ljava/lang/Integer;

.field private LastAction:Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean$LastActionBean;

.field private Name:Ljava/lang/String;

.field private StartTime:Ljava/lang/String;

.field private Text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;->Name:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Alerts_Struct$Alerts$AreaBean;->Text:Ljava/lang/String;

    return-object p0
.end method

.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;
.super Ljava/lang/Object;
.source "WallPaperReportUsedResponse.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->code:I

    .line 9
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->code:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;->message:Ljava/lang/String;

    return-void
.end method

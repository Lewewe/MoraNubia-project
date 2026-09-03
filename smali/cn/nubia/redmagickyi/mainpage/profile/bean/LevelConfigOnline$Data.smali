.class public Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;
.super Ljava/lang/Object;
.source "LevelConfigOnline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private level:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->level:I

    .line 17
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->accountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->level:I

    return p0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->level:I

    return-void
.end method

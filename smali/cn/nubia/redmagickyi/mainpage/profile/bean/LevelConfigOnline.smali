.class public final Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;
.super Ljava/lang/Object;
.source "LevelConfigOnline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;
    .locals 2

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    return-object p0
.end method


# virtual methods
.method public addData(Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    .line 52
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    .line 41
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->list:Ljava/util/List;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

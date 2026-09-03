.class public Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;
.super Ljava/lang/Object;
.source "PetStyleBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedContent"
.end annotation


# static fields
.field public static DEFAULT_NEED_REMIND:Z = true


# instance fields
.field private isNeedRemind:Z

.field private skinId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->DEFAULT_NEED_REMIND:Z

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->isNeedRemind:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;
    .locals 2

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    return-object p0
.end method


# virtual methods
.method public getSkinId()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->skinId:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedRemind()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->isNeedRemind:Z

    return p0
.end method

.method public setNeedRemind(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->isNeedRemind:Z

    return-void
.end method

.method public setSkinId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->skinId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

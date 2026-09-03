.class public Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;
.super Ljava/lang/Object;
.source "LiveCalenderOnlineBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveActivitiesOfDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient bgImageBitmap:Landroid/graphics/Bitmap;

.field private transient bgImageGrayBitmap:Landroid/graphics/Bitmap;

.field private transient bgImageGrayPath:Ljava/lang/String;

.field private transient bgImagePath:Ljava/lang/String;

.field private bgImageUrl:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private isOffline:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;"
        }
    .end annotation
.end field

.field private transient profileImageBitmap:Landroid/graphics/Bitmap;

.field private transient profileImageGrayBitmap:Landroid/graphics/Bitmap;

.field private transient profileImageGrayPath:Ljava/lang/String;

.field private transient profileImagePath:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private transient statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->this$0:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->date:Ljava/util/Date;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->date:Ljava/util/Date;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->isOffline:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->isOffline:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBgImageBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBgImageGrayBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageGrayBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBgImageGrayPath()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageGrayPath:Ljava/lang/String;

    return-object p0
.end method

.method public getBgImagePath()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getBgImageUrl()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->date:Ljava/util/Date;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-object p0
.end method

.method public getProfileImageBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getProfileImageGrayBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageGrayBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getProfileImageGrayPath()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageGrayPath:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileImagePath()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;
    .locals 0

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    return-object p0
.end method

.method public isOffline()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->isOffline:Z

    return p0
.end method

.method public setBgImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBgImageGrayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageGrayBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBgImageGrayPath(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageGrayPath:Ljava/lang/String;

    return-void
.end method

.method public setBgImagePath(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImagePath:Ljava/lang/String;

    return-void
.end method

.method public setBgImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->date:Ljava/util/Date;

    return-void
.end method

.method public setList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-void
.end method

.method public setOffline(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->isOffline:Z

    return-void
.end method

.method public setProfileImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setProfileImageGrayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageGrayBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setProfileImageGrayPath(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageGrayPath:Ljava/lang/String;

    return-void
.end method

.method public setProfileImagePath(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImagePath:Ljava/lang/String;

    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveActivitiesOfDate{date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bgImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', bgImagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', bgImageGrayPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->bgImageGrayPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', profileImagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', profileImageGrayPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->profileImageGrayPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isOffline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->isOffline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcn/nubia/accountsdk/aidl/SettingAccountInfo;
.super Ljava/lang/Object;
.source "SettingAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/accountsdk/aidl/SettingAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvatar:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mIsLogin:Z

.field private mIsShowRedPoint:Z

.field private mNickName:Ljava/lang/String;

.field private mRedPointCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/accountsdk/aidl/SettingAccountInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsLogin:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mNickName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mAvatar:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsShowRedPoint:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mRedPointCount:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    .line 17
    iput-boolean p1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsLogin:Z

    .line 18
    iput-object p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mNickName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mAvatar:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsShowRedPoint:Z

    .line 21
    iput p5, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mRedPointCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mAvatar:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public getRedPointCount()I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mRedPointCount:I

    return p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLogin()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsLogin:Z

    return p0
.end method

.method public isShowRedPoint()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsShowRedPoint:Z

    return p0
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingAccountInfo{mIsLogin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mAvatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mIsShowRedPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsShowRedPoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRedPointCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mRedPointCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    iget-boolean p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsLogin:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-boolean p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mIsShowRedPoint:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget p2, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mRedPointCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

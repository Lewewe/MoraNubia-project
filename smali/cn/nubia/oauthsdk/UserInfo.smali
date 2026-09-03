.class public Lcn/nubia/oauthsdk/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/oauthsdk/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvatar:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mGender:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMobile:Ljava/lang/String;

.field private mNikeName:Ljava/lang/String;

.field private mOpenid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo$1;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/oauthsdk/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mOpenid:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mNikeName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mAvatar:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mEmail:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mMobile:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mGender:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/UserInfo;->mLocation:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mBirthday:Ljava/lang/String;

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

    .line 73
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mAvatar:Ljava/lang/String;

    return-object p0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mBirthday:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mMobile:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mNikeName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mOpenid:Ljava/lang/String;

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mAvatar:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mBirthday:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mMobile:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mNikeName:Ljava/lang/String;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserInfo;->mOpenid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mOpenid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mNikeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mMobile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mGender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcn/nubia/oauthsdk/UserInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

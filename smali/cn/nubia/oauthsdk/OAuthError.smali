.class public Lcn/nubia/oauthsdk/OAuthError;
.super Ljava/lang/Object;
.source "OAuthError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/oauthsdk/OAuthError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorDescription:Ljava/lang/String;

.field private mErrorType:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError$1;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthError$1;-><init>()V

    sput-object v0, Lcn/nubia/oauthsdk/OAuthError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorType:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorDescription:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthError;->mState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorType:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthError;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcn/nubia/oauthsdk/OAuthError;->mErrorDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthError;->mState:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

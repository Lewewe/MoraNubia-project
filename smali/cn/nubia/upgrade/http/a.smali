.class public Lcn/nubia/upgrade/http/a;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/a$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/upgrade/http/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J

.field private j:J

.field public k:Lcn/nubia/upgrade/http/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/upgrade/http/a$a;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/a$a;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/http/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/upgrade/http/a;->h:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcn/nubia/upgrade/http/a;->i:J

    .line 125
    sget-object v0, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    iput-object v0, p0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcn/nubia/upgrade/http/a;->h:Z

    const-wide/16 v1, -0x1

    .line 129
    iput-wide v1, p0, Lcn/nubia/upgrade/http/a;->i:J

    .line 250
    sget-object v1, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->a:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->b:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->c:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->d:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->f:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/a;->g:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iput-boolean v0, p0, Lcn/nubia/upgrade/http/a;->h:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcn/nubia/upgrade/http/a;->h:Z

    .line 264
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/http/a;->i:J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/http/a;->j:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcn/nubia/upgrade/http/a;->j:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/http/a;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/upgrade/http/a;->i:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->g:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/http/a;->j:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->b:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/http/a;->h:Z

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/http/a;->c:Ljava/lang/String;

    return-void
.end method

.method public h()Lcn/nubia/upgrade/http/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    return-object p0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/http/a;->i:J

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcn/nubia/upgrade/http/a;->h:Z

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcn/nubia/upgrade/http/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    :goto_0
    iget-wide v0, p0, Lcn/nubia/upgrade/http/a;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget-wide v0, p0, Lcn/nubia/upgrade/http/a;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

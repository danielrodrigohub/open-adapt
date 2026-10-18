.class public final Ldd/f;
.super Ljava/lang/Object;
.source "Realm.kt"

# interfaces
.implements Lyc/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/f$a;
    }
.end annotation


# static fields
.field public static final Companion:Ldd/f$a;

.field public static final i:Ldd/f;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldd/f$a;

    invoke-direct {v0}, Ldd/f$a;-><init>()V

    sput-object v0, Ldd/f;->Companion:Ldd/f$a;

    new-instance v0, Ldd/f;

    const-string v1, "default"

    invoke-direct {v0, v1}, Ldd/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldd/f;->i:Ldd/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldd/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldd/f;

    iget-object v1, p0, Ldd/f;->h:Ljava/lang/String;

    iget-object p1, p1, Ldd/f;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ldd/f;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Realm(name="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldd/f;->h:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

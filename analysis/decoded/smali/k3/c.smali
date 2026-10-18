.class public final Lk3/c;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lp2/f;


# static fields
.field public static final b:Lk3/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk3/c;

    invoke-direct {v0}, Lk3/c;-><init>()V

    sput-object v0, Lk3/c;->b:Lk3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

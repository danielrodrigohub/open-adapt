.class public final Lk1/o$b$c;
.super Lk1/o$b;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk1/o$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk1/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lk1/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SUCCESS"

    return-object v0
.end method

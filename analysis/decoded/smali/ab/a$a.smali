.class public final Lab/a$a;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lab/a$a;

.field public static final b:Lab/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lab/a$a;

    invoke-direct {v0}, Lab/a$a;-><init>()V

    sput-object v0, Lab/a$a;->a:Lab/a$a;

    sget-object v0, Lab/b;->b:Lab/b;

    sput-object v0, Lab/a$a;->b:Lab/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

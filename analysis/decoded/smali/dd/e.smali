.class public abstract Ldd/e;
.super Ljava/lang/Object;
.source "InstanceFormat.kt"

# interfaces
.implements Lyc/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/e$a;,
        Ldd/e$c;,
        Ldd/e$b;
    }
.end annotation


# static fields
.field public static final Companion:Ldd/e$b;

.field public static final i:Ldd/e$c;


# instance fields
.field public final h:Lkotlinx/serialization/SerialFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldd/e$b;

    invoke-direct {v0}, Ldd/e$b;-><init>()V

    sput-object v0, Ldd/e;->Companion:Ldd/e$b;

    new-instance v0, Ldd/e$c;

    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    invoke-direct {v0, v1}, Ldd/e$c;-><init>(Lkotlinx/serialization/StringFormat;)V

    sput-object v0, Ldd/e;->i:Ldd/e$c;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/SerialFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldd/e;->h:Lkotlinx/serialization/SerialFormat;

    return-void
.end method

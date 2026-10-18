.class public abstract Lea/h;
.super Ljava/lang/Object;
.source "AdaptKitLaceTightness.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea/h$c;,
        Lea/h$a;,
        Lea/h$b;
    }
.end annotation


# static fields
.field public static final i:Lea/h$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/h$b;

    invoke-direct {v0}, Lea/h$b;-><init>()V

    sput-object v0, Lea/h;->i:Lea/h$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lea/h;->h:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

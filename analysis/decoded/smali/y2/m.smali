.class public abstract Ly2/m;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/m$a;,
        Ly2/m$d;,
        Ly2/m$b;,
        Ly2/m$c;
    }
.end annotation


# static fields
.field public static final a:Ly2/m$c;

.field public static final b:Ly2/m$a;

.field public static final c:Ly2/m$b;

.field public static final d:Ly2/m$d;

.field public static final e:Ly2/m$b;

.field public static final f:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ly2/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly2/m$c;

    invoke-direct {v0}, Ly2/m$c;-><init>()V

    sput-object v0, Ly2/m;->a:Ly2/m$c;

    .line 2
    new-instance v0, Ly2/m$a;

    invoke-direct {v0}, Ly2/m$a;-><init>()V

    sput-object v0, Ly2/m;->b:Ly2/m$a;

    .line 3
    new-instance v0, Ly2/m$b;

    invoke-direct {v0}, Ly2/m$b;-><init>()V

    sput-object v0, Ly2/m;->c:Ly2/m$b;

    .line 4
    new-instance v1, Ly2/m$d;

    invoke-direct {v1}, Ly2/m$d;-><init>()V

    sput-object v1, Ly2/m;->d:Ly2/m$d;

    .line 5
    sput-object v0, Ly2/m;->e:Ly2/m$b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 6
    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Ly2/m;->f:Lp2/g;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Ly2/m;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public abstract b(IIII)F
.end method
